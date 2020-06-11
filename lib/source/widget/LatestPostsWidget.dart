import 'dart:developer';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:html/parser.dart';
// adminName and adminKey is needed only for admin level APIs
wp.WordPress wordPress = wp.WordPress(
  baseUrl: 'https://blog.matwright.dev',
  authenticator: wp.WordPressAuthenticator.JWT,
  adminName: '',
  adminKey: '',
);

class LatestPostsWidget extends StatefulWidget {
  @override
  _LatestPostsWidgetState createState() => _LatestPostsWidgetState();
}

class _LatestPostsWidgetState extends State<LatestPostsWidget> {
  List<wp.Post> posts;
  @override
  void initState() {
    super.initState();
    this.getPosts();
  }
  @override
  Widget build(BuildContext context) {


    return listPosts();
  }

  Widget listPosts(){
    if (posts == null) {
      return Row(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitFadingCube(
            color: Colors.white,
            size: 25.0,
          ),
          Padding(padding:EdgeInsets.only(right:20),),
          Text('Loading latest blog articles...')
        ],
      );
    } else {
      return CarouselSlider(
        scrollDirection: Axis.horizontal,autoPlay: true,
        height: 105.0,

        autoPlayInterval: Duration(seconds: 5),
        autoPlayCurve: Curves.linearToEaseOut,
        viewportFraction: 1,
        items: posts.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return buildPost(i);
            },
          );
        }).toList(),


      );
    }

  }
  Widget buildPost(wp.Post post) {
    DateTime postDate=DateTime.parse(post.dateGmt).toLocal();
    var formatter = new DateFormat.yMMMMd('en_US');
    return   Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(

            onTap:() async{
              await launch(post.link);
            } ,
            isThreeLine: true,
            // leading: buildImage(post),
            title: Text(post.title.rendered),

            subtitle:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Text(parse(post.excerpt.rendered).documentElement.text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,),
                Text(formatter.format(postDate),textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.w100,fontSize: 10,color: Theme.of(context).accentColor.withOpacity(0.7)),),
                Padding(padding: EdgeInsets.only(bottom:10)),
                Container(
                  height: 30,
                  child:
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: post.tags!=null?post.tags.length:0,
                    itemBuilder: (context, index) {

                      return   Container(

                          margin: EdgeInsets.only(right:15),
                          width:100,height: 30,
                          child:Badge(animationType: BadgeAnimationType.scale,
                            shape: BadgeShape.square,badgeColor: Theme.of(context).cardColor,
                            borderRadius: 20,elevation: 1,
                            badgeContent: Text(post.tags[index].name,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,),

                          ));
                    },

                  ),
                )




              ],
            ),



            dense: true,
          )
        ],
      ),
    );


  }
  Widget buildImage(wp.Post post) {
    if (post.featuredMedia == null || post.featuredMedia.mediaDetails==null  || post.featuredMedia.mediaDetails.sizes==null || post.featuredMedia.mediaDetails.sizes.thumbnail==null){
      return Image.network(
        'https://mozartec.com/wp-content/uploads/2019/04/asp-dot-net-core.jpg',
      );
    }

    return Image.network(
        post.featuredMedia.mediaDetails.sizes.thumbnail.sourceUrl
    );
  }

  Future<String> getPosts() async {

    var res = await fetchPosts();
    debugPrint("len: "+res.length.toString());
    setState(() {
      posts = res;
    });
    log('got posts');
    return "Success!";
  }


  Future<List<wp.Post>> fetchPosts() async {
    var posts = wordPress.fetchPosts(
        postParams: wp.ParamsPostList(
            context: wp.WordPressContext.view,
            postStatus: wp.PostPageStatus.publish,
            orderBy: wp.PostOrderBy.date,
            order: wp.Order.desc,perPage: 5
        ),
        fetchAuthor: true,
        fetchFeaturedMedia: true,
        fetchComments: false,
        fetchCategories: false,
        fetchTags: true,
        fetchAttachments: false
    );
    return posts;
  }
}

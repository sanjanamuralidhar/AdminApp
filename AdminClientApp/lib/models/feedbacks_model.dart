class FeedBacks{
 String mailid;
 String tk;
 String content;
 int rating;
 String resName;

FeedBacks({
  this.mailid,
  this.content,
  this.tk,
  this.rating,
  this.resName,
});
}
final  List<FeedBacks> lists = [
    FeedBacks(
      mailid: 'testorder@gmail.com',
      tk: 'TK-2',
      rating: 3,
      resName:'Mr.Wangs',
      content: 'gswgfgfjbwefwsudfsahn',
    ),
    FeedBacks(
      mailid: 'testloyalty@gmail.com',
      tk: 'TK-1',
      rating: 4,
      resName:'Chicken Hut',
      content: 'good experience',
    ),
    FeedBacks(
      mailid: 'test3@gmail.com',
      tk: 'TK-3',
      rating: 2,
      resName:'SpiceIndia',
      content: 'wow this is good',
    ),
    FeedBacks(
      mailid: 'test3@gmail.com',
      tk: 'TK-3',
      rating: 4,
      resName:'',
      content: 'wow this is good',
    ),
    FeedBacks(
      mailid: 'test3@gmail.com',
      tk: 'TK-3',
      rating: 3,
      resName:'',
      content: 'wow this is good',
    ),
    FeedBacks(
      mailid: 'test3@gmail.com',
      tk: 'TK-3',
      rating: 4,
      resName:'',
      content: 'wow this is good',
    ),
  ];
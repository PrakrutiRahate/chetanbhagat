import 'package:book_app/book1.dart';
import 'package:book_app/bookdata.dart';
import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    List<BookData> ofBooksDt = [
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/08deffa890bde213ed19e995794a6a22.JPG",
          imgtext: "One Indian Girl",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/One-Indian-Girl-Chetan-Bhagat/dp/8129142147/ref=sr_1_1_sspa?ie=UTF8&qid=1536666129&sr=8-1-spons&keywords=one+indian+girl+by+chetan+bhagat&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzUlpKSklOUzZDU1BZJmVuY3J5cHRlZElkPUEwODYzMjQ1MVhDTzBTNzFYUEMyWCZlbmNyeXB0ZWRBZElkPUEwMDMwMjIzSFMyUDVSTFgyVFFZJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==")));
          }),
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/3db15df577f58fd16c224054e80bbd77.JPG",
          imgtext: "The 3 Mistakes Of My Life",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/3-Mistakes-My-Life/dp/8129135515/ref=sr_1_8?s=books&ie=UTF8&qid=1537434074&sr=1-8&refinements=p_27%3AChetan+Bhagat")));
          }),
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/eb487bce33ac4cf201df0b883119376d.JPG",
          imgtext: "Half Girlfriend",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/Half-Girlfriend-Chetan-Bhagat/dp/8129135728/ref=sr_1_2?s=books&ie=UTF8&qid=1537434074&sr=1-2&refinements=p_27%3AChetan+Bhagat")));
          }),
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/7812a6d75612a86736b11777980026e6.JPG",
          imgtext: "2 States",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/2-States-Story-My-Marriage/dp/8129135523/ref=sr_1_5?s=books&ie=UTF8&qid=1537434074&sr=1-5&refinements=p_27%3AChetan+Bhagat")));
          }),
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/628a1e3d986c50a07bdba045f6ae3555.JPG",
          imgtext: "Five Points Someone",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/Five-Point-Someone-What-Not/dp/8129135493/ref=sr_1_7?s=books&ie=UTF8&qid=1537434074&sr=1-7&refinements=p_27%3AChetan+Bhagat")));
          }),
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/86aa169f88af659ce28be2795bdc523e.JPG",
          imgtext: "Revolution Twenty20",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/Revolution-Twenty-20-Corruption-Ambition/dp/8129135531/ref=sr_1_4?s=books&ie=UTF8&qid=1537434074&sr=1-4&refinements=p_27%3AChetan+Bhagat")));
          }),
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/15ea219a12861e3a29c395a217423804.jpg",
          imgtext: "One Night At Call center",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/Night-Call-Centre-Chetan-Bhagat/dp/8129135507/ref=sr_1_1?s=books&ie=UTF8&qid=1537434321&sr=1-1&keywords=one+night+at+the+call+centre+by+chetan+bhagat")));
          }),
      BookData(
          imgpath:
              "https://mapi.trycatchtech.com/uploads/chetan_bhagat/41c9ca99927bb918eefe161e5c95dcd2.JPG",
          imgtext: "What Young India Want",
          ontap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookOne(
                        b1: "https://www.amazon.in/What-Young-India-Wants-Selected/dp/812913554X/ref=sr_1_9?s=books&ie=UTF8&qid=1537434074&sr=1-9&refinements=p_27%3AChetan+Bhagat")));
          }),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xFF021C4F),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3.5,
                    ),
                    Text(
                      "Books page",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 1.1 -
                    kToolbarHeight +
                    40,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                      itemCount: ofBooksDt.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, i) {
                        return GestureDetector(
                          onTap: () {
                            ofBooksDt[i].ontap();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          ofBooksDt[i].imgpath,
                                        ))),
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: double.infinity,
                                  color: Colors.black26,
                                  child: Text(
                                    ofBooksDt[i].imgtext,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 9, 9, 9),
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:assignment3/model/drama_movies.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });
  final DramaMovie movie;

  @override
  Widget build(BuildContext context) {
    List<String> actorList = [];
    // actorList = movie.actor!.split(',');
    actorList = movie.actor?.split(',') ?? [];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 200),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 4),
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(movie.title),
            const SizedBox(height: 16),
            Text(movie.rating ?? ''),
            Text(movie.releaseDate ?? ''),
            Text(movie.runningTime ?? ''),
            SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: actorList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: actorList.length != 0
                          ? Chip(
                              label: Text(actorList[index]),
                            )
                          : SizedBox(),
                    );
                  },
                )),
            Text(movie.genre),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

/*
late final FavoritesScreenModel model;
final SaveToFavoritesService service = SaveToFavoritesService();
*/
class _FavoritesScreenState extends State<FavoritesScreen> {
  /*
  late final FavoritesScreenBloc _bloc = FavoritesScreenBloc(service: RepositoryProvider.of<SaveToFavoritesService>(context),)
    ..add(
      GetFavoritesMoviesEvent(
        shouldShowProgress: true,
        movieId: model.movieId,
        name: model.name,
        poster: model.poster,
        year: model.year,
      ),
    );

 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.yellowAccent,
    )
        /*
      BlocProvider(
        create: (_) => _bloc,
        child: _favoritesBloc(context),
      ),

       */
        );
  }
/*

  Widget _favoritesBloc(BuildContext context) {
    return BlocBuilder<FavoritesScreenBloc, FavoritesScreenState>(
      builder: (context, state) {
        if (state.status == MovieStatus.error) {
          return const Text('error');
        }
        if (state.status == MovieStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == MovieStatus.success) {
          return GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 290,
              ),
              itemCount: state.favoritesMovies!.length,
              itemBuilder: (BuildContext context, int index) {
                return _info(context, state.favoritesMovies![index]);
              });
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _info(BuildContext context, FavoritesScreenModel element) {
    return Text(element.name ?? '');
  }

   */
}

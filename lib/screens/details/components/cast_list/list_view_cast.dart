import 'package:flutter/material.dart';
import 'package:movies_app/screens/details/components/cast_list/actor_info.dart';

class ListViewCast extends StatelessWidget {
  const ListViewCast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemExtent: 170,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  border: Border.all(
                    color: Colors.pink.shade50.withOpacity(0.2),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.shade500.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const ActorInfo(),
              ),
            );
          },
        ),
      ),
    );
  }
}

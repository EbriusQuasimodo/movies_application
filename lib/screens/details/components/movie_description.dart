import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Описание",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 5),
          Text("Сотрудник страховой компании страдает хронической бессонницей и отчаянно пытается вырваться из мучительно скучной жизни. Однажды в очередной командировке он встречает некоего Тайлера Дёрдена — харизматического торговца мылом с извращенной философией. Тайлер уверен, что самосовершенствование — удел слабых, а единственное, ради чего стоит жить, — саморазрушение..",
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      ),
    );
  }
}


import 'src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('.appable/'),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart_outlined),
        onPressed: (){},
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text("Heading", style: Theme.of(context).textTheme.displayLarge,),
              Text("Sub-heading", style: Theme.of(context).textTheme.displayMedium,),
              Text("Paragraph", style: Theme.of(context).textTheme.bodyLarge,),
              ElevatedButton(onPressed: (){}, child: const Text("Elevated Button"),),
              OutlinedButton(onPressed: (){}, child: const Text("Outlined Button"),),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image(image: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/pile-of-books-with-pages-open-by-wind-royalty-free-image-1600785994.jpg?crop=0.79555xw:1xh;center,top&resize=2048:*"),),
                // child: Image(image: AssetImage("assets/images/books.jpg"),),
              ),
            ],
          ),
        ),
    );
  }
}
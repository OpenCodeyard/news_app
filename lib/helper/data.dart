import 'package:news_app/models/category_model.dart';

List<CategoryModel> getcategories() {
  List<CategoryModel> category = [];

  //1
  CategoryModel categoryModel = CategoryModel(
    "Business",
    "https://images.unsplash.com/photo-1474631245212-32dc3c8310c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1024&q=80",
  );
  category.add(categoryModel);

  //2
  categoryModel = CategoryModel(
    "Entertainment",
    "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  );
  category.add(categoryModel);

  //3
  categoryModel = CategoryModel(
    "General",
    "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  );
  category.add(categoryModel);

  //4
  categoryModel = CategoryModel(
    "Health",
    "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80",
  );
  category.add(categoryModel);

  //5
  categoryModel = CategoryModel(
    "Science",
    "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80",
  );
  category.add(categoryModel);

  //6
  categoryModel = CategoryModel(
    "Sports",
    "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
  );
  category.add(categoryModel);

  //7
  categoryModel = CategoryModel(
    "Technology",
    "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  );
  category.add(categoryModel);

  return category;
}

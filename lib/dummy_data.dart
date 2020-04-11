import './models/meal.dart';

const DUMMY_MEALS = const [
  Meal(
    id: 0,
    title: 'Chocolate Cake',
    imageUrl:
        'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ingredients: [
      '3 cups all-purpose flour',
      '3 cups granulated sugar',
      '1.5 cups unsweetened cocoa powder',
      '1 tablespoon baking soda',
      '1.5 teaspoons baking powder',
      '1.5 teaspoons salt',
      '4 large eggs',
      '1.5 cups buttermilk',
      '1.5 cups warm water',
      '1/2 cup vegetable oil',
      '2 teaspoons vanilla extract'
    ],
    steps: [
      'Preheat oven to 350 degrees. Butter three 9-inch cake rounds. Dust with flour and tap out the excess.',
      'Mix together flour, sugar, cocoa, baking soda, baking powder, and salt in a stand mixer using a low speed until combined.',
      'Add eggs, buttermilk, warm water, oil, and vanilla. Beat on a medium speed until smooth. This should take just a couple of minutes.',
      'Divide batter among the three pans. I found that it took just over 3 cups of the batter to divide it evenly.',
      'Bake for 30-35 minutes until a toothpick inserted into the center comes out clean.',
      'Cool on wire racks for 15 minutes and then turn out the cakes onto the racks and allow to cool completely.',
      'Frost with your favorite frosting and enjoy!'
    ],
  ),
  Meal(
    id: 1,
    title: 'Dumplings',
    imageUrl:
        'https://images.pexels.com/photos/939052/pexels-photo-939052.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ingredients: [
      '4 cups all-purpose flour (500 g)',
      '2 teaspoons salt, divided',
      '1 ¼ cups warm water (300 mL)',
      '2 cups red cabbage (200 g)',
      '2 cups green onion (300 g), sliced',
      '6 cloves garlic, minced',
      '4 tablespoons ginger, minced',
      '2 tablespoons soy sauce',
      '2 tablespoons sesame oil',
      '½ lb ground pork (225 g)',
      '½ teaspoon pepper',
      '¾ cup mushroom (55 g), diced',
      '¾ cup carrot (90 g), diced',
      '½ lb shrimp (225 g), peeled and deveined',
    ],
    steps: [
      'In a large bowl, combine the flour, 1 teaspoon of salt, and the warm water and mix until well-combined.',
      'Roll out dough on a floured surface and knead until smooth.',
      'Divide the dough into 4 equal parts.',
      'Roll out 1 piece of dough into a thin log and divide into 6 or 8 pieces, depending on the size of dumplings you want. Repeat with the remaining dough portions.'
          'Lightly flour the dough pieces and roll out 1 piece into a thin circle roughly 4-inches (10 cm) in diameter.',
      'Keep the dumpling wrappers separated with a small piece of parchment paper and repeat with the remaining dough.',
      'Combine the cabbage, green onions, garlic, ginger, soy sauce, and sesame oil in a medium bowl and mix until well-incorporated.',
      'For the pork filling, combine the ground pork with the remaining teaspoon of salt, the pepper and 1 cup (125g) of the cabbage mixture and stir until well-incorporated.',
      'For the veggie filling, combine the mushrooms and carrot and microwave for 3 minutes, until soft. Add 1 cup (125g) of the cabbage mixture and stir until well-incorporated.',
      'For the shrimp filling, combine the shrimp with 1 cup (125g) of the cabbage mixture and stir until well-incorporated.',
      'To assemble the dumplings, add roughly 1 heaping tablespoon of filling to the center of a dumpling wrapper. With your finger, lightly coat half of the outside of the wrapper with water. Fold the moistened half of the wrapper over the filling and, using your fingers, pleat the edges to seal. Repeat with the remaining fillings and wrappers.',
      'Heat the oil over medium high in a large skillet and add a few dumplings, cooking them in batches. Once the bottoms of the dumplings start to brown, add a splash of water and cover with a lid. Steam for about 5 minutes, or until the dumplings are cooked and the water has evaporated. Transfer the cooked dumplings to a paper towel-lined plate to remove any excess moisture or grease.',
      'In a small bowl, combine the soy sauce, rice vinegar, sesame oil, and pepper flakes and stir to combine. Serve the dumplings immediately with the dipping sauce.'
    ],
  ),
  Meal(
    id: 2,
    title: 'French Fries',
    imageUrl:
        'https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ingredients: [
      '2kg russet potatoes',
      'Vegetable or peanut oil, for frying',
      'Sea salt',
    ],
    steps: [
      'Peel and rinse the potatoes. Then cut them into sticks by cutting the potato in 4 or 5 vertical pieces, and then cutting each piece into sticks. ',
      'Place them in a large bowl and cover with cold water. Allow them to soak, 2 to 3 hours. (You can also stick them in the fridge and let them soak overnight.) ',
      'When you\'re ready to make the fries, drain off the water and lay the potatoes on 2 baking sheets lined with paper towels. Blot with paper towels to dry them. ',
      'Heat a few inches of oil in a heavy pot to 300 degrees F. In 3 or 4 batches, cook the potatoes until soft, 4 to 5 minutes per batch. They should not be brown at this point! You just want to start the cooking process. Remove each batch and drain on new/dry paper towels',
      'Once all the potatoes have been fried at 300 degrees F, turn up the heat until the oil reaches 400 degrees F. When the oil\'s hot, start frying the potatoes in batches again, cooking until the fries are golden and crisp. Remove the potatoes from the oil and drain on paper towels. ',
      'Sprinkle with sea salt and dive in!',
    ],
  ),
  Meal(
    id: 3,
    title: 'Hamburger',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
  ),
  Meal(
    id: 4,
    title: 'Macarons',
    imageUrl:
        'https://images.pexels.com/photos/3969250/pexels-photo-3969250.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ingredients: [
      '1 ¾ cups powdered sugar (210 g)',
      '1 cup almond flour (95 g), finely ground',
      '1 teaspoon salt, divided',
      '3 egg whites, at room temperature',
      '¼ cup granulated sugar (50 g)',
      '½ teaspoon vanilla extract',
      '2 drops pink gel food coloring',
    ],
    steps: [
      'Make the macarons: In the bowl of a food processor, combine the powdered sugar, almond flour, and ½ teaspoon of salt, and process on low speed, until extra fine. Sift the almond flour mixture through a fine-mesh sieve into a large bowl.',
      'In a separate large bowl, beat the egg whites and the remaining ½ teaspoon of salt with an electric hand mixer until soft peaks form. Gradually add the granulated sugar until fully incorporated. ',
      'Add the vanilla and beat until incorporated. Add the food coloring and beat until just combined.',
      'Add about ⅓ of the sifted almond flour mixture at a time to the beaten egg whites and use a spatula to gently fold until combined. ',
      'Transfer the macaron batter into a piping bag fitted with a round tip.',
      'Place 4 dots of the batter in each corner of a rimmed baking sheet, and place a piece of parchment paper over it, using the batter to help adhere the parchment to the baking sheet.',
      'Pipe the macarons onto the parchment paper in 1½-inch (3-cm) circles, spacing at least 1-inch (2-cm) apart.',
      'Preheat the oven to 300˚F (150˚C).',
      'Bake the macarons for 17 minutes, until the feet are well-risen and the macarons don’t stick to the parchment paper.',
      'Transfer the macarons to a wire rack to cool completely before filling.',
      'Place in an airtight container for 24 hours to “bloom”.'
    ],
  ),
  Meal(
    id: 5,
    title: 'Onion Rings',
    imageUrl:
        'https://www.seriouseats.com/recipes/images/2015/09/20150927-food-lab-onion-rings-20.jpg',
    ingredients: [
      '1 large onion, cut into 1cm slices, rings separated',
      'Groundnut oil, for deep frying',
      '150g self-raising flour',
      '180ml sparkling water',
    ],
    steps: [
      'Slice the onion into rings about 1cm wide. Remove the skin and separate the rings.',
      'Heat the oil to 180C in a heavy-based pan – it should be no more than 1/ 3 full.',
      'Meanwhile put the flour and sparkling water in a bowl and season generously. Whisk together to form a batter.',
      'Coat a small batch of onion rings in batter. Carefully lower into the hot oil and deep-fry until crisp and golden, about 2 - 3 minutes. Remove with a slotted spoon and place on a piece of kitchen towel to drain. Repeat with the remaining onion and batter.',
    ],
  ),
  Meal(
    id: 6,
    title: 'Pho',
    imageUrl:
        'https://images.pexels.com/photos/3903586/pexels-photo-3903586.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ingredients: [
      '8 ounces dried rice noodles',
      '2 tablespoons olive oil, divided',
      '1 pound boneless, skinless chicken thighs, cut into 1-inch chunks',
      'Kosher salt and freshly ground black pepper',
      '3 cloves garlic, minced',
      '1 tablespoon freshly grated ginger',
      '6 cups chicken stock',
      '2 tablespoon hoisin sauce',
      '1 tablespoons fish sauce'
    ],
    steps: [
      'In a large pot of water, cook rice noodles according to package instructions; drain well and set aside.',
      'Heat 1 tablespoon olive oil in a large stockpot or Dutch oven over medium heat. Season chicken with salt and pepper, to taste. Add chicken to the stockpot and cook until golden, about 2-3 minutes; set aside.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Add remaining 1 tablespoon oil to the stockpot. Add garlic and ginger, and cook, stirring frequently, until fragrant, about 1-2 minutes.',
      'Whisk in chicken stock, hoisin sauce and fish sauce. Bring to a boil; reduce heat and simmer for 10 minutes.',
      'Serve immediately with rice noodles and chicken, garnished with onion, bean sprouts, cilantro, mint, jalapeno and limes, if desired.'
    ],
  ),
  Meal(
    id: 7,
    title: 'Pizza',
    imageUrl:
        'https://images.pexels.com/photos/803290/pexels-photo-803290.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ingredients: [
      '300g strong bread flour',
      '1 tsp instant yeast',
      '1 tsp salt',
      '1 tbsp olive oil',
      '100ml passata',
      'Handful fresh basil',
      '1 garlic clove, crushed',
      '125g ball mozzarella, sliced',
      'Handful grated or shaved parmesan',
      'Handful cherry tomatoes, halved'
    ],
    steps: [
      'Make the base: Put the flour into a large bowl, then stir in the yeast and salt. Make a well, pour in 200ml warm water and the olive oil and bring together with a wooden spoon until you have a soft, fairly wet dough. Turn onto a lightly floured surface and knead for 5 mins until smooth. Cover with a tea towel and set aside. You can leave the dough to rise if you like, but it’s not essential for a thin crust.',
      'Make the sauce: Mix the passata, basil and crushed garlic together, then season to taste. Leave to stand at room temperature while you get on with shaping the base.',
      'Roll out the dough: If you’ve let the dough rise, give it a quick knead, then split into two balls. On a floured surface, roll out the dough into large rounds, about 25cm across, using a rolling pin. The dough needs to be very thin as it will rise in the oven. Lift the rounds onto two floured baking sheets.',
      'Top and bake: Heat oven to 240C Put another baking sheet or an upturned baking tray in the oven on the top shelf. Smooth sauce over bases with the back of a spoon. Scatter with cheese and tomatoes, drizzle with olive oil and season. Put one pizza, still on its baking sheet, on top of the preheated sheet or tray. Bake for 8-10 mins until crisp. Serve with a little more olive oil, and basil leaves if using. Repeat step for remaining pizza.',
    ],
  ),
  Meal(
    id: 8,
    title: 'Samosa',
    imageUrl:
        'https://i0.wp.com/vegecravings.com/wp-content/uploads/2017/03/samosa-recipe-step-by-step-instructions.jpg?fit=1801%2C1717&quality=65&strip=all&ssl=1',
    ingredients: [
      '2 cup maida / plain flour',
      '¼ tsp ajwain / carom seeds',
      '½ tsp salt',
      '¼ cup oil',
      '½ cup water',
      '2 tsp oil',
      '1 tsp cumin / jeera',
      '½ tsp coriander seeds, crushed',
      '½ tsp fennel / saunf',
      'pinch hing / asafoetida',
      '1 inch ginger, finely chopped',
      '1 chilli, finely chopped',
      '½ cup peas / matar',
      '½ tsp kashmiri red chilli powder',
      '½ tsp coriander powder',
      '¼ tsp cumin powder / jeera powder',
      '½ tsp aamchur / dry mango powder',
      '½ tsp garam masala',
      '¼ tsp pepper, crushed',
      '¾ tsp salt',
      '4 potato / aloo, boiled & mashed',
      '5 cashew / kaju, chopped',
      '2 tbsp raisins / kishmish',
      '2 tbsp coriander, finely chopped',
    ],
    steps: [
      'Pinch a ball sized dough and grease with oil.',
      'Roll the dough into oval shape.',
      'Now cut it horizontally, diving into 2 equal portions using a knife.',
      'Grease with water and make cone.',
      'Stuff 2 tbsp of prepared samosa masala into the cone.',
      'Grease little water on the edges.',
      'Close and seal tightly by pressing firmly.',
      'Deep-fry the samosa on a low flame. alternatively bake at 180 degree celcius for 40 minutes.',
      'Stir occasionally, frying the samosa on low flame for atleast 15 minutes.',
      'Once the aloo samosa turns golden and crisp, drain off over kitchen paper.',
      'Finally, enjoy aloo samosa with green chutney and tamarind chutney.',
    ],
  ),
  Meal(
    id: 9,
    title: 'Sushi',
    imageUrl:
        'https://images.pexels.com/photos/357756/pexels-photo-357756.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ingredients: [
      '100g sushi rice',
      '1 sheet nori seaweed',
      '2 tbsp sushi vinegar',
      'Soy sauce',
      'Wasabi',
      'Sushi ginger',
      'Roasted white sesame seeds (optional)'
    ],
    steps: [
      'To make sushi rice, Japanese white rice is mixed with a special sushi rice vinegar.',
      'Once you have your sushi rice prepared, you will need to begin by laying out a preparation area with your makisu rolling mat.',
      'Place a sheet or nori on the mat and cover two thirds of one side of your nori seaweed with your sushi rice approximately 1cm high.',
      'Add your ingredients in a line on top of the rice in the centre. You can choose any combination of ingredients that compliment each other well. We went for salmon, salad and mayonnaise for this one.',
      'Now for the fun bit. Using the wooden rolling mat, start rolling up the ingredients away from you, while keeping the roll tight. The moisture from the rice will help it stick together.',
      'You can then cut your roll into 6-8 pieces and serve with some soy sauce, wasabi, sushi ginger and cup of sencha green tea.',
    ],
  ),
];

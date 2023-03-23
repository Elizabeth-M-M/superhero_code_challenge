puts "Starts seeding....."
heroes= Hero.create!(
  [
    {
      name:"Spider-Man",
      super_name:"Spider-Man"
    },
    {
      name:"Hulk",
      super_name:"The incredible hulk"
    },
    {
      name:"Jean Grey",
      super_name:"Jean Grey"
    }
  ]
)
powers= Power.create!(
  [
    {
      name:"Spider-sense.",
      description:"It's a limited precognition, allowing him to anticipate danger and avoid it."
    },
    {
      name:"Healing Factor",
      description:"Ability to recover from bodily injuries or disease at a superhuman rate"
    },
    {
      name:"Superhuman Strength",
      description:"Extremely great strength"
    },
    {
      name:"Gamma bomb",
      description:"One gets stronger when he gets angry "
    },
    {
      name:"Telepath",
      description:"Supposed communication of thoughts or ideas by means other than the known senses"
    }

  ]
)
hero_powers= HeroPower.create!(
  [
    {
      strength:"Strong",
      hero_id:1,
      power_id:1
    },
    {
      strength:"Average",
      hero_id:3,
      power_id:5
    },
    {
      strength:"Weak",
      hero_id:2,
      power_id:4
    },
    {
      strength:"Strong",
      hero_id:2,
      power_id:3
    },
    {
      strength:"Strong",
      hero_id:1,
      power_id:2
    },
    {
      strength:"Weak",
      hero_id:1,
      power_id:3
    }
  ]
)
puts "done"
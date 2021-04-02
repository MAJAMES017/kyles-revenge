

Monster.delete_all
Review.delete_all

# 5.times do 
#     User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
# end

Monster.create([
  { 
    name: "Monster Original Green",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2021/03/09/auto/800/070b8158fc56889cd72efc2c0abbb0a8.png?mod=v1_0a81d5e28ad31278095573536193fe59"
  }, 
  { 
    name: "Monster Lo-Carb",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2021/03/09/auto/800/72f96217f4abaf2c745a62b104969126.png?mod=v1_ba849c4320da3609119f8c29099182f0"
  },
  { 
    name: "Monster Energy Assault",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2021/03/09/auto/800/add3fea85830fb5da9df01773ebc8b68.png?mod=v1_b07e0c6e23a1b6572b361558763a9a09" 
  }, 
  { 
    name: "Monster Mule",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2019/10/10/auto/800/ee9069195518551169fdf45ea6f4adcd.png?mod=v1_58d8351e940fa4e47b2f27d9b87dfc53" 
  }, 
  { 
    name: "Monster Import",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2016/06/29/auto/800/3db0b2f61cd369c48701f3aa19630489.png?mod=v1_e8dd95606c90dc93f84a015cf491ac48" 
  }, 
  { 
    name: "Monster Zero Ultra White",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2020/01/22/auto/800/3059b56a244a2dc18c289824a95e951d.png?mod=v1_fb8e229d5906961fc1a76ab2b99445cd" 
  },
  { 
    name: "Monster Zero-Sugar Ultra Red",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2020/01/22/auto/800/047f53668b55450684015075977d75ca.png?mod=v1_1f8f47ea2cf4366a271091df5abd2492" 
  }, 
  { 
    name: "Monster Zero-Sugar Ultra Fiesta",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2020/03/03/auto/800/4c6f35331abad00ea6e28931884e1353.png?mod=v1_5ce4f86cb0d259c435723cfbec49cee5" 
  },
  { 
    name: "Java Monster Mean Bean",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2016/06/30/auto/800/b1de1877dd5f1a4b589bf83561740b5e.png?mod=v1_d9ca74126efc9578159ae749c2d5633d" 
  },
  { 
    name: "Java Monster Irish Blend",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2016/06/30/auto/800/0b63c5410e4756762f3734ca4a5dfa4f.png?mod=v1_d9ca74126efc9578159ae749c2d5633d" 
  },
  { 
    name: "Rehab Monster Strawberry Lemonade",
    image_url: "https://www.monsterenergy.com/media/uploads_image/2021/03/15/auto/800/c73f5f3566ba7325c3e4ab6870973f44.png?mod=v1_34372bf9e03080a4ea245db7fc59d185" 
  }
])

reviews = Review.create([
    {
      title: 'Best Flavor',
      description: 'this is the best of the best fellow kyles',
      score: 5,
      monster: Monster.all.sample
    },
    {
      title: 'i feel the buzz',
      description: 'i am like a bee',
      score: 4,
      monster: Monster.all.sample
    },
    {
      title: 'i threw up a little',
      description: 'i was able to stay up for a week',
      score: 3,
      monster: Monster.all.sample
    }
])
puts "punches through a wall then chugs a monster while blasting 'break stuff' by limp bizkit"

# drink: Drink.all.samplerails
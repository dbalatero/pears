class PearsController < ApplicationController
  PEARS = %w[
    https://snaped.fns.usda.gov/sites/default/files/seasonal-produce/2018-05/pears.jpg
    https://www.tastingtable.com/img/gallery/why-you-should-leave-the-skin-on-pears/l-intro-1653326060.jpg
    https://cdn.tasteatlas.com/images/ingredients/60eea3493ed944f7a4e6db7ff9b4765f.jpg
    http://cdn.shopify.com/s/files/1/2336/3219/products/shutterstock_1693201075_1024x1024.png?v=1621966032
    https://www.halegroves.com/images/xl/906-comice-pears_02.jpg
    https://mnhardy.umn.edu/sites/mnhardy.umn.edu/files/styles/folwell_full/public/2022-08/pears-banner.jpg?itok=7MMHsEhg
    https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2Farchive%2F45c348aabe206cafa9bd7361d9c0df5331f2f746
  ]

  def random
    @pear = PEARS.sample
  end
end

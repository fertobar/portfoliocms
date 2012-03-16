# encoding: utf-8
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

normal_format = PostFormat.create!(name: 'Normal')
item_format = PostFormat.create!(name: 'Item')

contact_us = Section.create!(title: 'Contact Us', subtitle: 'by My Name', priority: 4)
technologies = Section.create!(title: 'Technologies', subtitle: 'Technologies & Skills', priority: 3)
customers = Section.create!(title: 'Customers', subtitle: 'Customers & Work Experience', priority: 2)
services = Section.create!(title: 'Services', subtitle: 'Services', priority: 1)
home = Section.create!(title: 'Home', subtitle: 'by My Name',  priority: 0)


argentina_photo = File.open("#{Rails.root}/app/assets/images/argentina.jpg", "r")
#home
normal_post_home = Post.create!(section: home, 
                                post_format: normal_format, 
                                title: 'About My Name', 
                                text: %{<p><strong>My Name </strong>
                                        is an IT consultant...<br/>
                                        ....<br/></p>
                                        <p>Another paragraph</p>},
                                paperclip_asset: argentina_photo )

#services                    
item_post_sevices_01 = Post.create!(section: services, 
                                    post_format: item_format, 
                                    title: 'Service 1',
                                    subtitle: 'Subtitle Service 1', 
                                    text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})


item_post_sevices_02 = Post.create!(section: services, 
                                    post_format: item_format, 
                                    title: 'Service 2',
                                    subtitle: 'Subtitle Service 2', 
                                    text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})

item_post_sevices_03 = Post.create!(section: services, 
                                    post_format: item_format, 
                                    title: 'Service 3',
                                    subtitle: 'Subtitle Service 3', 
                                    text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})

#customers                    
item_post_customers_01 = Post.create!(section: customers, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Customer 1</a>',
                                      subtitle: 'Subtitle 1', 
                                      text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})


item_post_customers_02 = Post.create!(section: customers, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Customer 2</a>',
                                      subtitle: 'Subtitle 2', 
                                      text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})


item_post_customers_03 = Post.create!(section: customers, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Customer 3</a>',
                                      subtitle: 'Subtitle 3', 
                                      text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})

item_post_customers_04 = Post.create!(section: customers, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Customer 4</a>',
                                      subtitle: 'Subtitle 4', 
                                      text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})
                                      
item_post_customers_05 = Post.create!(section: customers, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Customer 5</a>',
                                      subtitle: 'Subtitle 5', 
                                      text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})
 
item_post_customers_06 = Post.create!(section: customers, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Customer 6</a>',
                                      subtitle: 'Subtitle 6', 
                                      text: %{<p>Paragraph<br/>
                                            Another paragraph </p>})


#Technologies
item_post_techonologies_01 = Post.create!(section: technologies, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Technology Group 1</a>',
                                      subtitle: 'Subtitle 1',
                                      text: %{<p>Technology 1<br/>
                                              Technology 2<br/>
                                              Technology 3<br/>
                                              Technology 4<br/>
                                              Technology 5<br/>
                                              Technology 6<br/>
                                              Technology 7<br/>
                                              </p>})

item_post_techonologies_02 = Post.create!(section: technologies, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Technology Group 2</a>',
                                      subtitle: 'Subtitle 2', 
                                      text: %{<p>Technology 1<br/>
                                              Technology 2<br/>
                                              Technology 3<br/>
                                              Technology 4<br/>
                                              Technology 5<br/>
                                              Technology 6<br/>
                                              Technology 7<br/>
                                              </p>})



item_post_techonologies_03 = Post.create!(section: technologies, 
                                      post_format: item_format, 
                                      title: '<a href="#" target="blank">Technology Group 3</a>',
                                      subtitle: 'Subtitle 3', 
                                      text: %{<p>Technology 1<br/>
                                              Technology 2<br/>
                                              Technology 3<br/>
                                              Technology 4<br/>
                                              Technology 5<br/>
                                              Technology 6<br/>
                                              Technology 7<br/>
                                              </p>})
                                           

#contact_us
normal_post_contact_us = Post.create!(section: contact_us, 
                                      post_format: normal_format, 
                                      title: 'Contact Us', 
                                      text: %{<p><strong>My Name</strong></p>
                                              <p><strong>My Address</strong></p> 
                                              <p><strong>My Phone Number</strong></p> 
                                              <p><strong>My Email</strong></p>
                                              <p><strong>My Skype</strong></p>
                                              <p></p>
                                              <p></p>
                                              },
                                      paperclip_asset: argentina_photo )
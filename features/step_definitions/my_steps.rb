When("inicio la aplicacion") do
    visit '/'
end

Then("debo ver el mensaje {string}") do |mensaje|
    expect(page).to have_css "h1", text: mensaje
end

When("el secreto es {string}") do |secreto|
    find_field('secreto', type: :hidden).set(secreto)
end
 
When("arriesgo con {string}") do |numero|
    fill_in("numero", :with => numero)
    click_button "Arriesgar"
end

When("quedan {string} chances") do |chances|
    find_field('chances', type: :hidden).set(chances)
end
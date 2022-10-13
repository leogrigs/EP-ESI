Dado('que estou na página de login') do
  visit "/login"
end

Quando('preencho o campo {string} com um {string}') do |string, string2|
    fill_in string, :with => string2
end

Quando('preencho o campo {string} com uma {string}') do |string, string2|
    fill_in string, :with => string2
end

E('clico em log in') do
end

Então('devo retornar a pagina de login') do

end










class ProductPdf < Prawn::Document
 
    def initialize (products)
        super()
        <tbody>
            <% @products.each do |product| %>
        <tr>
            <td><%= product.name %></td>
            <td><%= product.description %></td>
            <td><%= product.website %></td>
            <td><%= product.image %></td>
            <td><%= product.destination = @impot.uniq.pluck[:country] %></td>
            #<td><%= link_to 'Show', product %></td>
            #<td><%= link_to 'Edit', edit_product_path(product) %></td>
            #<td><%= link_to 'Destroy', product, method: :delete, data: { confirm: 'Are you sure?' } %></td>
            <div class="actions"><%= form.submit "Submit", class: "pure-button" %></div>
        </tr>
        <% frait = 0 %>
        <% (product.destination).each do |fraits| %>
            <% frait = fraits[:costTax] %>
        <% end %>
        <p> total charges excluding taxes</p><%=frait%><p>$</p>
        <% end %>
        </tbody>
        </table>
 
    end


end
<% if @comment.destroyed? %>
  $('#comment-' +<%= @comment.id %>).fadeOut(900);
  $('.js-comments-count').html("<%= pluralize(@comment.user.comments.count, 'comment') %>");
<% else %>
  $('#comment-' +<%= @comment.id %>).prepend("<div class='alert alert-danger'><%= flash[:error] %></div>)";
<% end %>
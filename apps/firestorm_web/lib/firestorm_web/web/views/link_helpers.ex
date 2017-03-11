defmodule FirestormWeb.Web.LinkHelpers do
  @moduledoc """
  View helpers for linking to things easily
  """

  import FirestormWeb.Web.Router.Helpers
  import Phoenix.HTML.{Link, Tag}

  @doc """
  Link to a thread using the thread's title as the link text
  """
  def thread_title_link(conn, thread) do
    link thread.title, to: category_thread_path(conn, :show, thread.category.slug, thread.id), class: "title"
  end

  def user_link(user) do
    link "@#{user.username}", to: "#", class: "user-name"
  end
end

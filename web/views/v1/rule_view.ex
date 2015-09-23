defmodule RestApi.V1.RuleView do
  use RestApi.Web, :view

  def render("index.json", %{rules: rules}) do
    %{data: render_many(rules, RestApi.V1.RuleView, "rule.json")}
  end

  def render("show.json", %{rule: rule}) do
    %{data: render_one(rule, RestApi.V1.RuleView, "rule.json")}
  end

  def render("rule.json", %{rule: rule}) do
    %{id: rule.id,
      name: rule.name}
  end
end

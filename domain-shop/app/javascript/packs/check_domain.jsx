// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from "react";
import ReactDOM from "react-dom";
import PropTypes from "prop-types";

const checkDomain = (domain) => {
  const url = "https://api.gandi.net/v5/domain/check";
  const header = { Authorization: "Apikey eGDwsqy7LQCMTS8Q0hsXHWKA" };
  fetch(url, { mode: "no-cors", headers: header })
    .then((resp) => resp.json())
    .then((data) => console.log(data))
    .catch((err) => console.log(err));
};
const Hello = () => (
  <div>
    <button onClick={checkDomain("home")}>Click</button>
  </div>
);

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <Hello />,
    document.body.appendChild(document.createElement("div"))
  );
});

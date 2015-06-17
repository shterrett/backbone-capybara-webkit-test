# Simple Failing Test for Capybara-Webkit and Backbone PATCH

This app sets up an incredibly simple application that allows a user to be
updated via either `PUT` or `PATCH` using Backbone. 

## The Problem

When running feature specs with Capybara-webkit, a `PATCH` request submitted
from Backbone does not submit parameters to the server. A `PUT` (through
"update") does. Both of these methods work when submitting through the UI.

## In the UI

+ Navigate to `/`
+ Click a user
+ Modify either/both attribute(s)
+ Click "Put"

The user will update.

Repeat, but click "Patch".
The user will also update

## In the tests

A feature spec has been provided for each of these cases in
`spec/features/put_and_patch_spec.rb`. Run these specs, and the "Put" spec will
succeed, but the "Patch" spec will fail. In addition, a `puts` statement has
been left in the controller to allow for easy inspection of the submitted
parameters.

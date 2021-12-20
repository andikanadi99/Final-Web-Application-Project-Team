#Release Notes
## Major Changes from v1.0
- Documentation
    - More in-code documentation was added to provide clarification on what was happening in the code.
- Correctness
    - Access for non-teacher roles was further restricted; students are no longer able to access admin-only pages through typing in the route in URL.
- Functionality
    - Instructions on proper formatting of input was added.
    - Users no longer need to input the Presentation ID of the presentation they are evaluating
    - Teachers no longer need to input the Student ID when creating a presentation from the admin page
    - Users no longer modify or edit evaluations
    - Teachers create new presentation events from the admin page only
- Aesthetics
    - Removed gradient background to improve aesthetics.
- Nested Routes
    - Created nested routes to improve functionality
    - presentations/:presentation/evaluations/:evaluation
    - users/:user/presentations:presentation

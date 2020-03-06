## The application for creating and managing checklists and audits.

The application allows:

- to review existing checklists and to CUD them
- to create a valid checklist with dynamic number of questions
- to publish/unpublish Checklists for Audits creating
- to see a list of audits (represents a record with answers for a specific checklist)
- to create an valid audit (fill a checklist)
- to CUD existing audits 
- to access Checklists and Audits after authorization with Devise gem

[Link to production](https://s-chlists-audits.herokuapp.com/) - powered with Heroku server.

**Technologies stack:**
- Ruby: 2.6.3
- Rails: 5.2.4.1
- Preprocessors: HAML, SASS
- UI: Materialize framework 
- Code style: Rails Style Guide

**Installation:**
- download repository
- install gems
- migrate DB
- run local server

Layers: 
- Model 
- View 
- Controller 
- Service

Models: 
- Checklist
- Audit
- Question.

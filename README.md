# Quave Code Challenge

Want to join Quave as a developer?

Great! Read this document and submit your solution.

We hire full stack developers only, so you must be comfortable with both front-end and back-end development.

Good luck!

> Not sure if we have open positions right now? Check our [Join repository](https://github.com/quavedev/join/issues/).

# Submission

## Getting Started

Create a private github repository from this template and share it with us: @renanccastro @filipenevola @rafaportobraga.

## Review

Ready for review? Fill out this [form](https://forms.gle/m2FTwSG8bcMfhS3JA).

You will provide a link to your solution repository in the form and also a cover letter. In the letter you should explain why you're a great fit and what you'll bring to Quave.

## Feedback

We'll give you feedback based on the position description. Check the timeline section in the job posting for feedback deadlines.

# Code Stack and Environment

## Introduction

At Quave, we use React and Ruby on Rails for some clients, projects, and products.

React is a popular JavaScript library for building user interfaces efficiently, while Rails is a battle-tested, opinionated full-stack framework that lets a small team ship a lot of product.

Our stack leverages React for the frontend, providing excellent component-based architecture with reusable UI components, paired with Rails' productivity features including:
- Authentication (Devise)
- Background Jobs (Active Job, Sidekiq)
- Active Record + migrations
- REST APIs (Action Controller / Jbuilder)
- Real-time updates (Action Cable / Turbo)
- Email Services (Action Mailer)
- And more

## Required Stack

We want to see your React and Ruby skills.

Your solution must use:
- Frontend: React 18
- Backend: Ruby on Rails 8 (API mode is fine)
- Database: SQLite (Rails 8 default)
- Styling: Tailwind CSS
- Ruby Dependency Management: Bundler
- Ruby Code Style: RuboCop (`rubocop-rails-omakase` defaults)

The solution must:
- Use the same data structure as the provided seed data (`backend/seed.json`)
- Work with `npm i && npm start` for the frontend
- Work with `bundle install` for the backend
- Include clear setup instructions
- Be compatible with the latest LTS version of Node.js and Ruby 3.2+
- Use RuboCop for Ruby linting/formatting with standard configuration

# Scope

## Requirements

Build a mini-app for event check-ins. The home page needs:

1. Event selector showing event names from the `communities` table
   - Default text: "Select an event"

2. List of registered people from the `people` table showing:
   - Full name (first + last name)
   - Company name
   - Title
   - Check-in date (MM/DD/YYYY, HH:mm or N/A)
   - Check-out date (MM/DD/YYYY, HH:mm or N/A)
   - "Check-in {person name}" button
   - "Check-out {person name}" button (shows 5 seconds after check-in)

3. Event summary showing:
   - Current attendee count
   - Company breakdown of current attendees
   - Number of people not checked in

The page should maintain an up-to-date view of the data, ensuring users see changes promptly. You can poll, use Action Cable, or any other approach you prefer — explain your trade-offs in the cover letter.

## Implementation Rules

1. Use:
   - Ruby on Rails for the backend API
   - React for frontend views
   - SQLite for data
   - TailwindCSS for styling
   - Bundler for Ruby dependency management

2. App must:
   - Have clear setup instructions in README
   - Run frontend on port `3000`
   - Run backend on port `8000`
   - Include proper database schema and migrations
   - Include API documentation (a short section in the README is fine)
   - Use RuboCop for Ruby code style

# Project Layout

```
.
├── backend/      # Rails 8 API (SQLite, Bundler, RuboCop)
│   ├── app/
│   ├── config/
│   ├── db/
│   │   ├── migrate/
│   │   └── seeds.rb       # loads backend/seed.json
│   ├── seed.json          # shared fixture data
│   ├── Gemfile
│   └── ...
└── frontend/     # React 18 + Vite + Tailwind
    ├── src/
    ├── package.json
    └── ...
```

# Setup

## Prerequisites

- Ruby 3.2+ (3.3 recommended — see `backend/.ruby-version`)
- Bundler (`gem install bundler`)
- Node.js LTS (20+)

SQLite is bundled — no separate database server to install or run.

## Backend

```bash
cd backend
bundle install
bin/rails db:create db:migrate db:seed
bin/rails server -p 8000
```

You should see the backend at http://localhost:8000 and a health check at http://localhost:8000/health.

The candidate is expected to implement the actual API endpoints — the controllers in `backend/app/controllers/api/` and the model bodies are intentionally stubbed with `TODO` comments.

## Frontend

```bash
cd frontend
npm install
npm start
```

The frontend will be available at http://localhost:3000 and is configured to talk to the backend on `http://localhost:8000`.

## Linting

```bash
cd backend && bundle exec rubocop
npm run quave-check   # runs prettier across JS/TS/CSS
```

# AI Tools

You can use AI tools to generate code, but you must:
1. Understand all generated code
2. Explain why it's the best solution
3. Answer any related questions in the interview

Not understanding your code = disqualification.

# Note

We won't answer questions about this challenge to ensure fair evaluation.

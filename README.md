# MOJU Analytics Engineering Challenge

Welcome to the MOJU Analytics Engineering challenge. This challenges is
designed to see how you work with a dbt project, how you work with data
of a similar context to MOJU, and how you communicate the results.

Within this git repository you will find a dbt project which has been
set up roughly along standard analytics engineering practice. In the
interests of brevity, many features (such as macros and multiple schemas)
have been stripped away, to leave a fairly minimal, but functional, setup.

The datasets contained within relate to store-by-store sales of MOJU
products across several customers. Descriptions of the meanings of the
columns and tables already present are in stored in the _usual place_.

## What do I need to do?

We'd like you to complete a short analytics engineering challenge. That
challenge has two parts:

1. **Some development work on the project.** Please commit your changes using
   git and then `zip` this whole folder up and submit it by email at least
   30 minutes before the start of the interview.
2. **A short presentation.** No longer than 10 mins of content, to be presented
   in the interview. Assume your audience has a sales/finance background.

The tasks we'd like you to do are:

1. Orient yourself on this project. Check that you understand the
   the structure, and that you can run the project on your machine.
   There is a brief _getting started_ guide below that offers some
   pointers, but (similar to the _Great British Bake-off Technial_
   _Challenge_) _the instructions are intentionally minimal_. You
   do not need to evidence this step in the presentation, although we
   may ask you questions on the choices you made.
2. Using the existing seed models, please build a SQL model which
   you might use to power a dashboard to understand store-level
   sales data. **Any visualisations which you include in your**
   **presentation should be constructed using this model**. If
   you feel it necessary to create multiple models for this purpose
   then we would like to see all of them. Commit this model in the
   project and include it in the `zip` file.
3. To demonstrate your exploration of the dataset, **please answer the**
   **following descriptive analytics questions in your presentation as**.
   Please make sensible assumptions where you feel appropriate.
   - Which town sold the most MOJU products in 2023?
   - Which product showed the greatest absolute increase in revenue
     from Q1 to Q4?
4. During the period covered by the data, some products were sold
   on promotion (i.e. for a lower retail price than normal). We want
   to understand our _Rate of Sale_, and even more so, our _Base_
   _Rate of Sale_ (our Rate of Sale excluding promoted periods).
   **Please analyse the _Rate of Sale_ numbers and make recommendations**
   **on product and promotion performance.** Assume that your audience
   will be from a sales or finance background.

Here are some pointers to help you understand the data and the task:
- _Rate of Sale_ (ROS) is the average weekly units sold per _stocking_
  _point_.
- A _stocking point_ is a unique product & store combination.
- The data modelling for promotions has not been done, and the data
  we do have is of questionable quality. Act accordingly.

## Getting started

This minimal project is build using [dbt](https://www.getdbt.com/)
and [DuckDB](https://duckdb.org/) so that you can run the project
without credentials to any external services. The project is designed
to be used with [uv](https://github.com/astral-sh/uv) for package
management, but feel free to use `pip`, `virtualenv`, `poetry`,
`pipenv` or any other package manager you feel more comfortable with.

Python dependencies are specified in the `pyproject.toml` file, but
the only one you should need to install directly is
[`dbt-duckdb`](https://pypi.org/project/dbt-duckdb/).

From the root of the project, you should be able to build the project
by calling:

```bash
dbt build --project-dir moju_ae_challenge
```

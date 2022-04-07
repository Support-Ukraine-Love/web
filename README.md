# SupportUkraine.love Website
Landing page for supportukraine.love

# New Laptop Setup

Make sure that you have `hugo` installed. 

1. Clone this repo
1. Go into the themes directory at `themes/compose` and run
`git submodule update --init --recursive` as the theme is a
submodule.<br />
➡️If you don't init/update: Most commonly the site just won't
run locally (next step) _or_ you'll see error(s) around 
`failing to extract shortcode`.
1. Run `hugo server` for local runnning version. (Do
not need to specify `-D` as this isn't a blog site / there
are no drafts.)
1. The `baseURL` is `/` so that the theme can load in both
development and production. ⚠️ Do not change this.

# Making Changes

## Refugee Information

To keep our efforts in sync, the sole source of truth for the
refugee page is [this Google
doc](https://docs.google.com/document/d/1w59p4ar7wwrZCV8c9PeUIJPGFA53jUcFaJhJCCM5Fik/edit#).

Changes are managed by doing an export of the Google Doc to HTML,
then making the edits on the `content/refugee/index.md` file.

All to the source material, including typos, updated URLs, etc.
should be done on the Google doc. The doc is being maintained by
several, experienced, disaster responders. (See more info on this
at the bottom of the Google doc.)

## Site To-Know

This code of the site is being managed here on Github. The
site deploys using **Netlify**'s free tier. This means:

1. You do not need to run `hugo -D` to update `public` as that
is done as part of the Netlify build process.
1. `public` is in the `.gitignore` anyhow.
1. Changes to `main` trigger a build in Netlify, so it is a
   protected branch.
1. Use the `development` branch for local development (see
   Preview Changes in subsequent section).
1. Netlify uses `0.83.1` to build. Version `0.94.2` has also 
   been used locally to build successfully.
1. Style consistentcy: There is a 🌻 as the last line of every
page.

⚠️ **Important** - Since this is a free GitHub account there's no
way to formally protect the `main` branch. That said, please use
the `development` branch for local code development and then PR to
`main`, which will then trigger a deploy to production.

## Hugo To-Know: Using the Compose Theme

The below information is about how to updating existing
information, add new information, and/or refactor. Although
the initial site was build by someone in the United States, it
is not intended to stay US-centric. Knowing how the directories
work and what header information to use and where will help with
breaking out single pages to multiple, region-specific, pages
if/when needed.

### Directory Structure of `content`

```
→ tree content -L 1
content
├── _index.md
├── about
├── charities
├── contact
├── images
├── information
├── letters
└── whats-happening
```

The main categories / directories to be concerned with are: 
charities, contact, information, letters, and whats-happening.
Succinctly:

* Charities - charities as well as other forms of aid
* Contact - How to contact "us" / request changes to the site
* Information - News sources and specifically calling out misinformation sources
* Letters - Template letters to reach out to your government representatives
* What's Happening - Explaining the Who's Who and What's Important
for the various people, governments, etc. to follow.

There are two patterns you'll see in the above:

* `directory/_index.md`
* `directory/index.md` (and other `.md` files)

The `_index.md` is when there is only one file under that header,
and the H2 headers will be split out in the left navigation bar.

The `index.md` with other `.md` files means that the Titles of the
other `.md` files will be split out in the left navigation bar.

Essentially: for cases when the information being supplied makes
sense to be one one page, in terms of scope and how the site will
be kept updated, then you'll see the first pattern. In cases
where splitting the information out, like different template letters
for different government structures, makes sense you'll see the
second pattern. **Note**:  There are separate instructions for
how to make sure the navigation bar updates correctly, which will
be supplied in the next two sections.

Keep these patterns in mind when you are choosing to update
existing or add new / refactor information on the site.

## Updating Existing Information

## Adding New Information or Refactoring

## Deploying Preview Changes

To verify that your local changes match remote, use the
`development` branch. This triggers a preview site on Netlify
that you can view at:

[https://creative-sawine-65837b.netlify.app/](https://creative-sawine-65837b.netlify.app/)

# Misc. Compose Theme Information

This is additional information to help with using the
Compose theme itself, like adding images.

The `weight` field: is used to determine how the various items on
the nav menu are ordered. When items share the same number they
are alphabetized. The current ordering is charities at `1`,
contact at `3`, and the rest are all at `2`. This ensures that
charities is always at the top, contact always at the bottom, and
the rest are listed in alphabetical order.

Inline comments are standard HTML comments.

Favicons located in `static/`

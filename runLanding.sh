#! /bin/bash

if test "{query}" == "local"
then
  #Open local versions.
  open http://localhost:5000/about/
  open http://localhost:5000/cookies/
  open http://localhost:5000/donations/
  open http://localhost:5000/familysearch-conference-in-a-box
  open http://localhost:5000/us-immigration-naturalization/
  open http://localhost:5000/us-immigration-naturalization/getting-started/
  open http://localhost:5000/us-immigration-naturalization/sponsors/
  open http://localhost:5000/us-immigration-naturalization/resources/
  open http://localhost:5000/us-immigration-naturalization/press-room/
  open http://localhost:5000/italian-ancestors/
  open http://localhost:5000/italian-ancestors/getting-started/
  open http://localhost:5000/italian-ancestors/press-room/
  open http://localhost:5000/italian-ancestors/resources/
  open http://localhost:5000/italian-ancestors/sponsors/
#New
  open http://localhost:5000/landing-pages/photos-lp/

  open http://localhost:5000/lds/
  open http://localhost:5000/myfamily/
  open http://localhost:5000/paf/
  open http://localhost:5000/privacy/
  open http://localhost:5000/records-mission/
  open http://localhost:5000/terms/
  open http://localhost:5000/tree-getting-started/
  open http://localhost:5000/tree-training/
  open http://localhost:5000/volunteer/
  open http://localhost:5000/volunteer/indexing/
  open http://localhost:5000/whats-new/
else
  #Open production versions.
  open https://familysearch.org/about
  open http://fs-landing-prod.herokuapp.com/cookies
  open https://familysearch.org/donations
  open https://familysearch.org/familysearch-conference-in-a-box
  open https://familysearch.org/us-immigration-naturalization
  open https://familysearch.org/us-immigration-naturalization/getting-started/
  open https://familysearch.org/us-immigration-naturalization/sponsors/
  open https://familysearch.org/us-immigration-naturalization/resources/
  open https://familysearch.org/us-immigration-naturalization/press-room/
  open https://familysearch.org/italian-ancestors
  open https://familysearch.org/italian-ancestors/getting-started/
  open https://familysearch.org/italian-ancestors/press-room/
  open https://familysearch.org/italian-ancestors/resources/
  open https://familysearch.org/italian-ancestors/sponsors/
#  open https://familysearch.org/landing-pages/photos-lp/
  open https://familysearch.org/lds
  open https://familysearch.org/myfamily/
  open https://familysearch.org/paf
  open https://familysearch.org/privacy/
  open https://familysearch.org/records-mission/
  open https://familysearch.org/terms/
  open https://familysearch.org/tree-getting-started/
  open https://familysearch.org/tree-training
  open https://familysearch.org/volunteer/
  open https://familysearch.org/volunteer/indexing
  open https://familysearch.org/whats-new
fi
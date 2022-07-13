*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://youtube.com
${search}   xpath://input[@id='search']
${searchBtn}    id=search-icon-legacy
${videoPics}    xpath://ytd-search//img

*** Test Cases ***
SearchMovie
    open browser    ${url}     ${browser}
    maximize browser window
    click element   xpath://yt-formatted-string[contains(text(),'Zgadzam się')]
    sleep   3
    input text  ${search}   冯提莫《痴心绝对》
    click element   ${searchBtn}
    sleep   3

    capture element screenshot  ${videoPics}    previewVideo.png
    capture page screenshot     previewPage.png

    ${title}=  get title
    log to console  ${title}

    close browser
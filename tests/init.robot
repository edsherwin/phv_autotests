*** Settings ***
Resource    imports.resource

Suite Setup    Open Browser To Execute Tests    ${URL}
Suite Teardown      Teardown
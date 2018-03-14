<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Account_Mail</fullName>
        <description>Account Mail</description>
        <protected>true</protected>
        <recipients>
            <recipient>ashok8@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>shiva@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
</Workflow>

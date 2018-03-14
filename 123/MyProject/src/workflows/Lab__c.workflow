<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Lab_Email_Template</fullName>
        <description>Lab Email Template</description>
        <protected>false</protected>
        <recipients>
            <recipient>ashok8@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>shiva@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lab_Rule_Email_Template</template>
    </alerts>
    <alerts>
        <fullName>Lab_Rule_Email_Template</fullName>
        <description>Lab Rule Email Template</description>
        <protected>false</protected>
        <recipients>
            <recipient>ashok8@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>shiva@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lab_Rule_Email_Template</template>
    </alerts>
    <alerts>
        <fullName>Lab_Rule_Email_Template1</fullName>
        <description>Lab Rule Email Template1</description>
        <protected>false</protected>
        <recipients>
            <recipient>ashok8@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>shiva@ipt.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Lab_Rule_Email_Template</template>
    </alerts>
    <rules>
        <fullName>Lab Rule</fullName>
        <actions>
            <name>Lab_Email_Template</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>Student_Id__r.Lab_Absent__c &gt;=2</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>

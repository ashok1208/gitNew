<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>New</fullName>
        <field>Account_Type__c</field>
        <literalValue>Savings</literalValue>
        <name>New</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Master__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>UpdateMaster</fullName>
        <actions>
            <name>New</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Child__c.Ammount__c</field>
            <operation>greaterOrEqual</operation>
            <value>10000</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>

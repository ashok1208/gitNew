<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>example1</fullName>
        <field>Type</field>
        <literalValue>Existing Customer - Upgrade</literalValue>
        <name>example1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>example_5</fullName>
        <field>StageName</field>
        <literalValue>Prospecting</literalValue>
        <name>example 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>exampl5</fullName>
        <actions>
            <name>example_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED( AccountId  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>example</fullName>
        <actions>
            <name>example1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED(StageName )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>

trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
    if (Trigger.isInsert) {
        EmailManager.sendMail('carlkristian.johansson@gmail.com', 'Language course insert.', 'Se ha insertado correctamente el registro.');
    }
    else if (Trigger.isDelete) {
        EmailManager.sendMail('carlkristian.johansson@gmail.com', 'Language course delete.', 'Se ha eliminado correctamente el registro.');
    }
    else if(Trigger.isUpdate){
        EmailManager.sendMail('carlkristian.johansson@gmail.com', 'Language course update.', 'Se ha actualizado correctamente el registro.');
    }
}
public class SelectorAccount {
    
    // Dado um List de Ids retorna uma set de Account [Nome, Email] até agora
    public static List<Account> getAccount(Set <Id> ids){
		return [Select Id, name, ownerid,(Select Id, firstname, lastname, Email, ownerid From Contacts ) From Account Where id in: ids];
    }    
}
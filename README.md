# linked_list
/*ILLAVARASI K*/
/*C Program to store in linked list and display in reverse order*/
#include <stdio.h>
#include <stdlib.h>


struct node
{
    char data;
    struct node *next;
};

void create(struct node **);
void reverse(struct node **);
void relese(struct node **);
void display(struct node *);

int main()

{
    struct node *p = NULL;
    create(&p);
    printf("\nEntered list:");
    display(p);
    printf("\n\nReversing the list...\n");
    reverse(&p);
    printf("\nReversed list:\n");
    display(p);
    relese(&p);
    return 0;
}
void reverse(struct node **head)
{
    struct node *p, *q, *r;
    p = q = r = *head;
    p = p->next->next;
    q = q->next;
    r->next = NULL;
    q->next = r;
    while (p != NULL)
    {
        r = q;
        q = p;
        p = p->next;
        q->next = r;
    }

    *head = q;
}
void create(struct node **head)
{
    char c;
    int ch;
    struct node *val1, *val2;
       printf("TO CONTINUE PRESS 1 \nTO END PRESS 0 \n");
       printf("Enter character: ");
       scanf("%d", &ch);
    
    for(;ch!=0;)
    {
        printf("Enter character: ");
        scanf("%c",&c);
        //printf("Do you wish to continue [1/0]: ");
        //scanf("%d", &ch);
        val1 = (struct node *)malloc(sizeof(struct node));
        val1->data = c;
        val1->next = NULL;
        if (*head == NULL)
        {
            *head = val1;
        }
        else
        {
            val2->next = val1;
        }
        val2 = val1;
        //scanf("%c", &c);
        //printf("\n");
       
       // printf("Do you wish to continue [1/0]: ");
        scanf("%d", &ch);
        
   
 }}
void display(struct node *p)
{
    while (p != NULL)
    {
        printf("%c",p->data);
        p=p->next;
    }
    //printf("\n");
}
void relese(struct node **head)
{
    struct node *val1 = *head;
    *head = (*head)->next;
    while ((*head) != NULL)
    {
        free(val1);
        val1 = *head;
        (*head) = (*head)->next;
    }
}

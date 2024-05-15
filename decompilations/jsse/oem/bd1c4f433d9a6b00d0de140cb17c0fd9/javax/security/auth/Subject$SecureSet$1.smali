.class Ljavax/security/auth/Subject$SecureSet$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;

.field final synthetic val$list:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/LinkedList;)V
    .registers 5

    .prologue
    .line 1
    .local p1, "this$1":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TE;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 1052
    iget-object v0, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1055
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-static {v2}, Ljavax/security/auth/Subject$SecureSet;->-get0(Ljavax/security/auth/Subject$SecureSet;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_10

    .line 1056
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1059
    :cond_10
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1060
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_3a

    .line 1062
    :try_start_16
    new-instance v2, Ljavax/security/auth/PrivateCredentialPermission;

    .line 1063
    iget-object v3, p0, Ljavax/security/auth/Subject$SecureSet$1;->val$list:Ljava/util/LinkedList;

    iget-object v4, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1064
    iget-object v4, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iget-object v4, v4, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v4}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v4

    .line 1062
    invoke-direct {v2, v3, v4}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_3a} :catch_41

    .line 1070
    :cond_3a
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1065
    :catch_41
    move-exception v0

    .line 1066
    .local v0, "se":Ljava/lang/SecurityException;
    iget-object v2, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1067
    throw v0
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 1075
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    iget-object v1, v1, Ljavax/security/auth/Subject$SecureSet;->subject:Ljavax/security/auth/Subject;

    invoke-virtual {v1}, Ljavax/security/auth/Subject;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1076
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1077
    const-string/jumbo v2, "Subject.is.read.only"

    .line 1076
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1080
    :cond_17
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1081
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2b

    .line 1082
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-static {v1}, Ljavax/security/auth/Subject$SecureSet;->-get0(Ljavax/security/auth/Subject$SecureSet;)I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 1090
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRIVATE_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1094
    :cond_2b
    :goto_2b
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->i:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1095
    return-void

    .line 1084
    :pswitch_31
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PRINCIPALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_2b

    .line 1087
    :pswitch_37
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->MODIFY_PUBLIC_CREDENTIALS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_2b

    .line 1082
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_31
        :pswitch_37
    .end packed-switch
.end method

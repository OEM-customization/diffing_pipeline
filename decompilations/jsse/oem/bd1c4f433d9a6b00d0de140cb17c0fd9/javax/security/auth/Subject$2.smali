.class final Ljavax/security/auth/Subject$2;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/security/AccessControlContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$acc:Ljava/security/AccessControlContext;

.field final synthetic val$subject:Ljavax/security/auth/Subject;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/security/auth/Subject$2;->val$subject:Ljavax/security/auth/Subject;

    iput-object p2, p0, Ljavax/security/auth/Subject$2;->val$acc:Ljava/security/AccessControlContext;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 559
    invoke-virtual {p0}, Ljavax/security/auth/Subject$2;->run()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/AccessControlContext;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 560
    iget-object v0, p0, Ljavax/security/auth/Subject$2;->val$subject:Ljavax/security/auth/Subject;

    if-nez v0, :cond_d

    .line 561
    new-instance v0, Ljava/security/AccessControlContext;

    iget-object v1, p0, Ljavax/security/auth/Subject$2;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {v0, v1, v2}, Ljava/security/AccessControlContext;-><init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V

    return-object v0

    .line 563
    :cond_d
    new-instance v0, Ljava/security/AccessControlContext;

    .line 564
    iget-object v1, p0, Ljavax/security/auth/Subject$2;->val$acc:Ljava/security/AccessControlContext;

    .line 565
    new-instance v2, Ljavax/security/auth/SubjectDomainCombiner;

    iget-object v3, p0, Ljavax/security/auth/Subject$2;->val$subject:Ljavax/security/auth/Subject;

    invoke-direct {v2, v3}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    .line 563
    invoke-direct {v0, v1, v2}, Ljava/security/AccessControlContext;-><init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V

    return-object v0
.end method

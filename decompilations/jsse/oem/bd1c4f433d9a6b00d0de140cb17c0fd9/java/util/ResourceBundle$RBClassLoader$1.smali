.class final Ljava/util/ResourceBundle$RBClassLoader$1;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle$RBClassLoader;
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
        "Ljava/util/ResourceBundle$RBClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 491
    invoke-virtual {p0}, Ljava/util/ResourceBundle$RBClassLoader$1;->run()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/ResourceBundle$RBClassLoader;
    .registers 3

    .prologue
    .line 492
    new-instance v0, Ljava/util/ResourceBundle$RBClassLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$RBClassLoader;-><init>(Ljava/util/ResourceBundle$RBClassLoader;)V

    return-object v0
.end method

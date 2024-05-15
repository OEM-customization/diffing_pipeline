.class public Lsun/security/action/GetIntegerAction;
.super Ljava/lang/Object;
.source "GetIntegerAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultSet:Z

.field private defaultVal:I

.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "theProp"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    .line 79
    iput-object p1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "theProp"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    .line 90
    iput-object p1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    .line 91
    iput p2, p0, Lsun/security/action/GetIntegerAction;->defaultVal:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    .line 93
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 108
    iget-object v1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_14

    iget-boolean v1, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    if-eqz v1, :cond_14

    .line 110
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lsun/security/action/GetIntegerAction;->defaultVal:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 111
    :cond_14
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lsun/security/action/GetIntegerAction;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

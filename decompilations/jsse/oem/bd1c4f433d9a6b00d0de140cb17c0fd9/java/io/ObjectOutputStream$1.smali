.class final Ljava/io/ObjectOutputStream$1;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$subcl:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Ljava/io/ObjectOutputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 7

    .prologue
    .line 1087
    iget-object v0, p0, Ljava/io/ObjectOutputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1088
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v2, Ljava/io/ObjectOutputStream;

    .line 1087
    if-eq v0, v2, :cond_2a

    .line 1093
    :try_start_6
    const-string/jumbo v2, "writeUnshared"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1092
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1094
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v2

    .line 1095
    :catch_17
    move-exception v1

    .line 1098
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_18
    const-string/jumbo v3, "putFields"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1099
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_23} :catch_24

    return-object v2

    .line 1100
    :catch_24
    move-exception v1

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 1103
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_2a
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1086
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

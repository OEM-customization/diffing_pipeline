.class Ljava/io/ObjectInputStream$1;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$subcl:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 1323
    iput-object p1, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 5

    .line 1325
    iget-object v0, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1326
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v1, Ljava/io/ObjectInputStream;

    if-eq v0, v1, :cond_23

    .line 1330
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "readUnshared"

    move-object v3, v1

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1332
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v1

    .line 1333
    :catch_12
    move-exception v2

    .line 1336
    :try_start_13
    const-string v2, "readFields"

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1337
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v1

    .line 1338
    :catch_1d
    move-exception v1

    .line 1327
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 1341
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1323
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

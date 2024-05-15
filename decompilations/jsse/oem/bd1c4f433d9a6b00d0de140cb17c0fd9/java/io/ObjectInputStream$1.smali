.class final Ljava/io/ObjectInputStream$1;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z
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
    iput-object p1, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 5

    .prologue
    .line 1269
    iget-object v0, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1270
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v2, Ljava/io/ObjectInputStream;

    .line 1269
    if-eq v0, v2, :cond_25

    .line 1275
    :try_start_6
    const-string/jumbo v3, "readUnshared"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    .line 1274
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1276
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v2

    .line 1277
    :catch_12
    move-exception v1

    .line 1280
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_13
    const-string/jumbo v3, "readFields"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1281
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1e} :catch_1f

    return-object v2

    .line 1282
    :catch_1f
    move-exception v1

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 1285
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_25
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1268
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

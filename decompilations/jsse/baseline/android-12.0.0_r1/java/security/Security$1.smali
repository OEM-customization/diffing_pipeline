.class Ljava/security/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$pa:Z


# direct methods
.method constructor blacklist <init>(Z)V
    .registers 2

    .line 749
    iput-boolean p1, p0, Ljava/security/Security$1;->val$pa:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 749
    invoke-virtual {p0}, Ljava/security/Security$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 8

    .line 753
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "java.lang.SecurityManager"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 755
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 756
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 758
    .local v4, "accessible":Z
    iget-boolean v5, p0, Ljava/security/Security$1;->val$pa:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1f

    .line 759
    const-string v5, "packageAccessValid"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v3, v5

    .line 760
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    move v4, v5

    .line 761
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_2e

    .line 763
    :cond_1f
    const-string v5, "packageDefinitionValid"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v3, v5

    .line 764
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    move v4, v5

    .line 765
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 767
    :goto_2e
    invoke-virtual {v3, v3, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 768
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    .line 780
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "accessible":Z
    goto :goto_36

    .line 770
    :catch_35
    move-exception v1

    .line 781
    :goto_36
    return-object v0
.end method

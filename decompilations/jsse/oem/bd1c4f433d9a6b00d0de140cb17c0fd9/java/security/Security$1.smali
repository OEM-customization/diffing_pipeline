.class final Ljava/security/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Security;->invalidateSMCache(Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pa:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Ljava/security/Security$1;->val$pa:Z

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 750
    invoke-virtual {p0}, Ljava/security/Security$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 754
    :try_start_1
    const-string/jumbo v4, "java.lang.SecurityManager"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 753
    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 755
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 756
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 758
    .local v0, "accessible":Z
    iget-boolean v4, p0, Ljava/security/Security$1;->val$pa:Z

    if-eqz v4, :cond_27

    .line 759
    const-string/jumbo v4, "packageAccessValid"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 760
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 761
    .local v0, "accessible":Z
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 767
    :goto_1f
    const/4 v4, 0x0

    invoke-virtual {v3, v3, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 768
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 781
    .end local v0    # "accessible":Z
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :goto_26
    return-object v7

    .line 763
    .local v0, "accessible":Z
    .restart local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "f":Ljava/lang/reflect/Field;
    :cond_27
    const-string/jumbo v4, "packageDefinitionValid"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 764
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 765
    .local v0, "accessible":Z
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_1f

    .line 770
    .end local v0    # "accessible":Z
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :catch_37
    move-exception v2

    .local v2, "e1":Ljava/lang/Exception;
    goto :goto_26
.end method

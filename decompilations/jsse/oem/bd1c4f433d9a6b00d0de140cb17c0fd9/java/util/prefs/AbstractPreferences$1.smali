.class Ljava/util/prefs/AbstractPreferences$1;
.super Ljava/lang/Object;
.source "AbstractPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/AbstractPreferences;->isUserNode()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Ljava/util/prefs/AbstractPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/AbstractPreferences;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/prefs/AbstractPreferences;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/prefs/AbstractPreferences$1;->this$0:Ljava/util/prefs/AbstractPreferences;

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 1027
    iget-object v0, p0, Ljava/util/prefs/AbstractPreferences$1;->this$0:Ljava/util/prefs/AbstractPreferences;

    invoke-static {v0}, Ljava/util/prefs/AbstractPreferences;->-get1(Ljava/util/prefs/AbstractPreferences;)Ljava/util/prefs/AbstractPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1026
    invoke-virtual {p0}, Ljava/util/prefs/AbstractPreferences$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

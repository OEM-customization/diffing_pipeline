.class Ljava/util/prefs/FileSystemPreferences$9;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->sync()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;

.field final synthetic val$newModTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/lang/Long;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$9;->this$0:Ljava/util/prefs/FileSystemPreferences;

    iput-object p2, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 748
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$9;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 749
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-virtual {v0}, Ljava/util/prefs/FileSystemPreferences;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 750
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/util/prefs/FileSystemPreferences;->-set9(J)J

    .line 751
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get10()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get11()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 756
    :goto_1f
    const/4 v0, 0x0

    return-object v0

    .line 753
    :cond_21
    iget-object v0, p0, Ljava/util/prefs/FileSystemPreferences$9;->val$newModTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/util/prefs/FileSystemPreferences;->-set6(J)J

    .line 754
    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get6()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/util/prefs/FileSystemPreferences;->-get7()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_1f
.end method

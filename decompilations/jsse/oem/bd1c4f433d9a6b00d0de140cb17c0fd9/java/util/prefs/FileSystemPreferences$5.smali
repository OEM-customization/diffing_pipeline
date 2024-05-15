.class Ljava/util/prefs/FileSystemPreferences$5;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FileSystemPreferences;->writeBackCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Ljava/util/prefs/FileSystemPreferences$5;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 617
    :try_start_1
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_43

    .line 618
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get1(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 619
    const-string/jumbo v5, " create failed."

    .line 618
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3b

    .line 626
    :catch_3b
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Ljava/util/prefs/BackingStoreException;

    if-eqz v3, :cond_c0

    .line 628
    check-cast v0, Ljava/util/prefs/BackingStoreException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 620
    :cond_43
    const/4 v1, 0x0

    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_44
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4f} :catch_63
    .catchall {:try_start_44 .. :try_end_4f} :catchall_c7

    .line 621
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_4f
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get3(Ljava/util/prefs/FileSystemPreferences;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/prefs/XmlSupport;->exportMap(Ljava/io/OutputStream;Ljava/util/Map;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_58} :catch_cc
    .catchall {:try_start_4f .. :try_end_58} :catchall_c9

    .line 622
    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_3b

    :cond_5d
    move-object v3, v4

    :goto_5e
    if-eqz v3, :cond_7d

    :try_start_60
    throw v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_61} :catch_3b

    :catch_61
    move-exception v3

    goto :goto_5e

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_63
    move-exception v3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_64
    :try_start_64
    throw v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_69
    if-eqz v1, :cond_6e

    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6e} :catch_71
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_3b

    :cond_6e
    :goto_6e
    if-eqz v4, :cond_7c

    :try_start_70
    throw v4

    :catch_71
    move-exception v5

    if-nez v4, :cond_76

    move-object v4, v5

    goto :goto_6e

    :cond_76
    if-eq v4, v5, :cond_6e

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6e

    :cond_7c
    throw v3

    .line 623
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_7d
    iget-object v3, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v3}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v3

    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 624
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 625
    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get8(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 625
    const-string/jumbo v5, " to "

    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 625
    iget-object v5, p0, Ljava/util/prefs/FileSystemPreferences$5;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-static {v5}, Ljava/util/prefs/FileSystemPreferences;->-get4(Ljava/util/prefs/FileSystemPreferences;)Ljava/io/File;

    move-result-object v5

    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_c0} :catch_3b

    .line 629
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_c0
    new-instance v3, Ljava/util/prefs/BackingStoreException;

    invoke-direct {v3, v0}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_c6
    return-object v4

    .line 622
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_c7
    move-exception v3

    goto :goto_69

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_c9
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto :goto_69

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_cc
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_64
.end method

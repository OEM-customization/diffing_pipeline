.class Ljava/util/prefs/FileSystemPreferences$NodeCreate;
.super Ljava/util/prefs/FileSystemPreferences$Change;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeCreate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method private constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 3

    .line 398
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$NodeCreate;->this$0:Ljava/util/prefs/FileSystemPreferences;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "x1"    # Ljava/util/prefs/FileSystemPreferences$1;

    .line 398
    invoke-direct {p0, p1}, Ljava/util/prefs/FileSystemPreferences$NodeCreate;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    return-void
.end method


# virtual methods
.method greylist-max-o replay()V
    .registers 1

    .line 405
    return-void
.end method

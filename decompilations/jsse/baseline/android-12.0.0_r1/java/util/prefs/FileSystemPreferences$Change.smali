.class abstract Ljava/util/prefs/FileSystemPreferences$Change;
.super Ljava/lang/Object;
.source "FileSystemPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/FileSystemPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Change"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method private constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 2

    .line 357
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$Change;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "x1"    # Ljava/util/prefs/FileSystemPreferences$1;

    .line 357
    invoke-direct {p0, p1}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    return-void
.end method


# virtual methods
.method abstract greylist-max-o replay()V
.end method

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
.field final synthetic this$0:Ljava/util/prefs/FileSystemPreferences;


# direct methods
.method private constructor <init>(Ljava/util/prefs/FileSystemPreferences;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;

    .prologue
    .line 357
    iput-object p1, p0, Ljava/util/prefs/FileSystemPreferences$Change;->this$0:Ljava/util/prefs/FileSystemPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/prefs/FileSystemPreferences;Ljava/util/prefs/FileSystemPreferences$Change;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/prefs/FileSystemPreferences;
    .param p2, "-this1"    # Ljava/util/prefs/FileSystemPreferences$Change;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/prefs/FileSystemPreferences$Change;-><init>(Ljava/util/prefs/FileSystemPreferences;)V

    return-void
.end method


# virtual methods
.method abstract replay()V
.end method

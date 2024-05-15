.class public final Ljava/nio/file/StandardWatchEventKinds;
.super Ljava/lang/Object;
.source "StandardWatchEventKinds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;
    }
.end annotation


# static fields
.field public static final whitelist test-api ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api OVERFLOW:Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/WatchEvent$Kind<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-class v1, Ljava/lang/Object;

    const-string v2, "OVERFLOW"

    invoke-direct {v0, v2, v1}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    .line 58
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-class v1, Ljava/nio/file/Path;

    const-string v2, "ENTRY_CREATE"

    invoke-direct {v0, v2, v1}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    .line 69
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-class v1, Ljava/nio/file/Path;

    const-string v2, "ENTRY_DELETE"

    invoke-direct {v0, v2, v1}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    .line 80
    new-instance v0, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-class v1, Ljava/nio/file/Path;

    const-string v2, "ENTRY_MODIFY"

    invoke-direct {v0, v2, v1}, Ljava/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

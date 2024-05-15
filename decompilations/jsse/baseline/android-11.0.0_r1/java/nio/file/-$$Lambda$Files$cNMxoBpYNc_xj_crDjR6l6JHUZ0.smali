.class public final synthetic Ljava/nio/file/-$$Lambda$Files$cNMxoBpYNc_xj_crDjR6l6JHUZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/nio/file/-$$Lambda$Files$cNMxoBpYNc_xj_crDjR6l6JHUZ0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/nio/file/-$$Lambda$Files$cNMxoBpYNc_xj_crDjR6l6JHUZ0;

    invoke-direct {v0}, Ljava/nio/file/-$$Lambda$Files$cNMxoBpYNc_xj_crDjR6l6JHUZ0;-><init>()V

    sput-object v0, Ljava/nio/file/-$$Lambda$Files$cNMxoBpYNc_xj_crDjR6l6JHUZ0;->INSTANCE:Ljava/nio/file/-$$Lambda$Files$cNMxoBpYNc_xj_crDjR6l6JHUZ0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/nio/file/FileTreeWalker$Event;

    invoke-static {p1}, Ljava/nio/file/Files;->lambda$find$3(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;->INSTANCE:Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;

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

    check-cast p1, Ljava/util/StringJoiner;

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

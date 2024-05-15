.class public final synthetic Ljava/util/stream/-$$Lambda$8ABiL5PN53c8rr14_yI2_4o5Zlo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$8ABiL5PN53c8rr14_yI2_4o5Zlo;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$8ABiL5PN53c8rr14_yI2_4o5Zlo;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$8ABiL5PN53c8rr14_yI2_4o5Zlo;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$8ABiL5PN53c8rr14_yI2_4o5Zlo;->INSTANCE:Ljava/util/stream/-$$Lambda$8ABiL5PN53c8rr14_yI2_4o5Zlo;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(J)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object p1

    return-object p1
.end method

package com.afwsamples.testdpc.util;
final class Flags$CommandLineParser {
    private final String[] args;
    private int currentIndex;
    private final java.util.Set parsedOrdinalParams;
    private final java.util.Map parsedParams;
    private final com.afwsamples.testdpc.util.Flags$TypeParser typeParser;

    private Flags$CommandLineParser(com.afwsamples.testdpc.util.Flags$TypeParser p2, String[] p3)
    {
        this.parsedParams = new java.util.HashMap();
        this.parsedOrdinalParams = new java.util.HashSet();
        this.currentIndex = 1;
        this.typeParser = p2;
        this.args = p3;
        return;
    }

    synthetic Flags$CommandLineParser(com.afwsamples.testdpc.util.Flags$TypeParser p1, String[] p2, com.afwsamples.testdpc.util.Flags$1 p3)
    {
        this(p1, p2);
        return;
    }

    static synthetic com.afwsamples.testdpc.util.Flags$ArgsContainer access$2600(com.afwsamples.testdpc.util.Flags$CommandLineParser p1, com.afwsamples.testdpc.util.Flags$Params p2)
    {
        return p1.parse(p2);
    }

    private void advance()
    {
        this.currentIndex = (this.currentIndex + 1);
        return;
    }

    private static Object asArray(Class p3, java.util.List p4)
    {
        Object v0 = reflect.Array.newInstance(p3, p4.size());
        int v1 = 0;
        while (v1 < p4.size()) {
            reflect.Array.set(v0, v1, p4.get(v1));
            v1++;
        }
        return v0;
    }

    private com.afwsamples.testdpc.util.Flags$Param getCurrentOrdinalParam(com.afwsamples.testdpc.util.Flags$Params p3)
    {
        return ((com.afwsamples.testdpc.util.Flags$Param) com.afwsamples.testdpc.util.Flags$Params.access$1600(p3).get(this.parsedOrdinalParams.size()));
    }

    private String getNextValue()
    {
        String v0_0 = this.args;
        int v1 = this.currentIndex;
        this.currentIndex = (v1 + 1);
        return v0_0[v1];
    }

    private boolean hasNextValue()
    {
        int v0_1;
        if (this.currentIndex >= this.args.length) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    private boolean hasOrdinalParamForCurrentArg(com.afwsamples.testdpc.util.Flags$Params p3)
    {
        int v0_2;
        if (this.parsedOrdinalParams.size() >= com.afwsamples.testdpc.util.Flags$Params.access$1600(p3).size()) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private static boolean isNamedArg(String p1)
    {
        return p1.startsWith("--");
    }

    private static String namedArgValueToName(String p1)
    {
        return p1.substring("--".length());
    }

    private com.afwsamples.testdpc.util.Flags$ArgsContainer parse(com.afwsamples.testdpc.util.Flags$Params p9)
    {
        while (this.hasNextValue()) {
            String v1 = this.peekNextValue();
            if (!com.afwsamples.testdpc.util.Flags$CommandLineParser.isNamedArg(v1)) {
                if (this.hasOrdinalParamForCurrentArg(p9)) {
                    com.afwsamples.testdpc.util.Flags$Param v2_6 = this.getCurrentOrdinalParam(p9);
                    if (!v2_6.acceptsMultipleValues()) {
                        this.parseSingleValue(v2_6, v1);
                    } else {
                        this.parseMultipleValues(v2_6);
                    }
                    this.parsedOrdinalParams.add(v2_6);
                    this.advance();
                } else {
                    Object[] v5_0 = new Object[0];
                    throw com.afwsamples.testdpc.util.Flags.access$1300("More ordinal parameters were provided than the command accepts.", v5_0);
                }
            } else {
                this.advance();
                String v0 = com.afwsamples.testdpc.util.Flags$CommandLineParser.namedArgValueToName(v1);
                if (com.afwsamples.testdpc.util.Flags$Params.access$1500(p9).containsKey(v0)) {
                    com.afwsamples.testdpc.util.Flags$Param v2_1 = ((com.afwsamples.testdpc.util.Flags$Param) com.afwsamples.testdpc.util.Flags$Params.access$1500(p9).get(v0));
                    if (!this.parsedParams.containsKey(v2_1)) {
                        if (!v2_1.acceptsMultipleValues()) {
                            if (this.hasNextValue()) {
                                this.parseSingleValue(v2_1, this.getNextValue());
                            } else {
                                Object[] v5_2 = new Object[1];
                                v5_2[0] = v0;
                                throw com.afwsamples.testdpc.util.Flags.access$1300("Expected value for parameter \'%s\' but it was not provided.", v5_2);
                            }
                        } else {
                            this.parseMultipleValues(v2_1);
                        }
                    } else {
                        Object[] v5_3 = new Object[1];
                        v5_3[0] = v0;
                        throw com.afwsamples.testdpc.util.Flags.access$1300("Named argument \'%s\' was called repeatedly.", v5_3);
                    }
                } else {
                    Object[] v5_4 = new Object[1];
                    v5_4[0] = v0;
                    throw com.afwsamples.testdpc.util.Flags.access$1300("Named argument \'%s\' does not exist.", v5_4);
                }
            }
        }
        if (this.parsedOrdinalParams.size() < com.afwsamples.testdpc.util.Flags$Params.access$1600(p9).size()) {
            RuntimeException v4_18 = com.afwsamples.testdpc.util.Flags$Params.access$1600(p9).iterator();
            while (v4_18.hasNext()) {
                com.afwsamples.testdpc.util.Flags$Param v2_5 = ((com.afwsamples.testdpc.util.Flags$Param) v4_18.next());
                if ((!this.parsedOrdinalParams.contains(v2_5)) && (!v2_5.acceptsMultipleValues())) {
                    Object[] v5_18 = new Object[1];
                    v5_18[0] = v2_5.name();
                    throw com.afwsamples.testdpc.util.Flags.access$1300("Ordinal parameter \'%s\' was not provided.", v5_18);
                }
            }
        }
        if ((this.parsedParams.size() - this.parsedOrdinalParams.size()) < com.afwsamples.testdpc.util.Flags$Params.access$1500(p9).size()) {
            RuntimeException v4_26 = com.afwsamples.testdpc.util.Flags$Params.access$1500(p9).values().iterator();
            while (v4_26.hasNext()) {
                com.afwsamples.testdpc.util.Flags$Param v2_3 = ((com.afwsamples.testdpc.util.Flags$Param) v4_26.next());
                if ((!this.parsedParams.containsKey(v2_3)) && ((!v2_3.isOptional()) && (!v2_3.acceptsMultipleValues()))) {
                    Object[] v5_14 = new Object[1];
                    v5_14[0] = v2_3.name();
                    throw com.afwsamples.testdpc.util.Flags.access$1300("Named parameter \'%s\' was not provided.", v5_14);
                }
            }
        }
        return new com.afwsamples.testdpc.util.Flags$ArgsContainer(this.parsedParams, 0);
    }

    private void parseMultipleValues(com.afwsamples.testdpc.util.Flags$Param p4)
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        while ((this.hasNextValue()) && (!com.afwsamples.testdpc.util.Flags$CommandLineParser.isNamedArg(this.peekNextValue()))) {
            v0_1.add(com.afwsamples.testdpc.util.Flags$TypeParser.access$1800(this.typeParser, p4, this.getNextValue()));
        }
        this.parsedParams.put(p4, com.afwsamples.testdpc.util.Flags$CommandLineParser.asArray(p4.dataType(), v0_1));
        return;
    }

    private void parseSingleValue(com.afwsamples.testdpc.util.Flags$Param p3, String p4)
    {
        this.parsedParams.put(p3, com.afwsamples.testdpc.util.Flags$TypeParser.access$1800(this.typeParser, p3, p4));
        return;
    }

    private String peekNextValue()
    {
        return this.args[this.currentIndex];
    }
}

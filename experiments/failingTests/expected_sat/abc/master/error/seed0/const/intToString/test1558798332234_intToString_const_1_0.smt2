(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (= (int.to.str tmp_int0) "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = 0
;actual status: not_implemented
;I0818 17:35:42.055114  2115 UnaryAutomaton.cpp:325] 1
;I0818 17:35:42.055299  2115 UnaryAutomaton.cpp:326] 1
;I0818 17:35:42.055342  2115 UnaryAutomaton.cpp:327] 1
;F0818 17:35:42.066247  2115 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f552c6a4f5d  google::LogMessage::Fail()
;    @     0x7f552c6a7513  google::LogMessage::SendToLog()
;    @     0x7f552c6a4aeb  google::LogMessage::Flush()
;    @     0x7f552c6a645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f552ccc8a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f552cd16992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f552cc159ad  Vlab::SMT::Visitor::visit()
;    @     0x7f552ccc7762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f552cd13df0  Vlab::SMT::ToString::accept()
;    @     0x7f552cc159ad  Vlab::SMT::Visitor::visit()
;    @     0x7f552ccc27f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f552cd0f450  Vlab::SMT::Eq::accept()
;    @     0x7f552cc159ad  Vlab::SMT::Visitor::visit()
;    @     0x7f552ccc0878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f552cd015ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f552ccf896e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f552cd0db5c  Vlab::SMT::And::accept()
;    @     0x7f552cc159ad  Vlab::SMT::Visitor::visit()
;    @     0x7f552cd01a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f552ccf7d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f552cd0bd2a  Vlab::SMT::Assert::accept()
;    @     0x7f552cc159ad  Vlab::SMT::Visitor::visit()
;    @     0x7f552cd1a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f552cd0b067  Vlab::SMT::Script::visit_children()
;    @     0x7f552cc159e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f552ccf7b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f552cd0b03c  Vlab::SMT::Script::accept()
;    @     0x7f552cc159ad  Vlab::SMT::Visitor::visit()
;    @     0x7f552ccf77bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f552cbfbb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f552bd57830  __libc_start_main

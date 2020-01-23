(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (= tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:56.957257  3076 UnaryAutomaton.cpp:325] 1
;I0818 17:36:56.957278  3076 UnaryAutomaton.cpp:326] 1
;I0818 17:36:56.957288  3076 UnaryAutomaton.cpp:327] 1
;F0818 17:36:57.125059  3076 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fc124dcff5d  google::LogMessage::Fail()
;    @     0x7fc124dd2513  google::LogMessage::SendToLog()
;    @     0x7fc124dcfaeb  google::LogMessage::Flush()
;    @     0x7fc124dd145e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fc1253f3a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fc125441992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fc1253409ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc1253f2762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fc12543edf0  Vlab::SMT::ToString::accept()
;    @     0x7fc1253409ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc1253ef9c5  Vlab::Solver::VariableValueComputer::visitLen()
;    @     0x7fc12543c04e  Vlab::SMT::Len::accept()
;    @     0x7fc1253409ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc1253eb878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fc12542c5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fc12542d2b0  Vlab::Solver::ConstraintSolver::process_mixed_integer_string_constraints_in()
;    @     0x7fc12542c85f  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc1254238c1  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc125438b5c  Vlab::SMT::And::accept()
;    @     0x7fc1253409ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc12542ca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc125422d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc125436d2a  Vlab::SMT::Assert::accept()
;    @     0x7fc1253409ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc125445699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc125436067  Vlab::SMT::Script::visit_children()
;    @     0x7fc1253409e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc125422b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fc12543603c  Vlab::SMT::Script::accept()
;    @     0x7fc1253409ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc1254227bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fc125326b84  Vlab::Driver::Solve()

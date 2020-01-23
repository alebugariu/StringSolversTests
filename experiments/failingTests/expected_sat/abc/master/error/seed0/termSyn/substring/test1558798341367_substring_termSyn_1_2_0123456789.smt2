(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:41.683095  2952 UnaryAutomaton.cpp:325] 1
;I0818 17:36:41.686187  2952 UnaryAutomaton.cpp:326] 1
;I0818 17:36:41.686210  2952 UnaryAutomaton.cpp:327] 1
;F0818 17:36:41.691493  2952 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fc7163def5d  google::LogMessage::Fail()
;    @     0x7fc7163e1513  google::LogMessage::SendToLog()
;    @     0x7fc7163deaeb  google::LogMessage::Flush()
;    @     0x7fc7163e045e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fc716a02a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fc716a50992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fc71694f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc716a01762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fc716a4ddf0  Vlab::SMT::ToString::accept()
;    @     0x7fc71694f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc7169fc7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fc716a49450  Vlab::SMT::Eq::accept()
;    @     0x7fc71694f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc7169fa878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fc716a3b5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fc716a3296e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc716a47b5c  Vlab::SMT::And::accept()
;    @     0x7fc71694f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc716a3ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc716a31d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc716a45d2a  Vlab::SMT::Assert::accept()
;    @     0x7fc71694f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc716a54699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc716a45067  Vlab::SMT::Script::visit_children()
;    @     0x7fc71694f9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc716a31b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fc716a4503c  Vlab::SMT::Script::accept()
;    @     0x7fc71694f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc716a317bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fc716935b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fc715a91830  __libc_start_main

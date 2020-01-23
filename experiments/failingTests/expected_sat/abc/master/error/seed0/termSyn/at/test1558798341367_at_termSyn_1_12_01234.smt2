(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.at tmp_str0 tmp_int1) (str.to.int tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:24.977910  3318 UnaryAutomaton.cpp:325] 1
;I0818 17:37:24.979995  3318 UnaryAutomaton.cpp:326] 1
;I0818 17:37:24.980010  3318 UnaryAutomaton.cpp:327] 1
;F0818 17:37:24.986140  3318 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f11939c7f5d  google::LogMessage::Fail()
;    @     0x7f11939ca513  google::LogMessage::SendToLog()
;    @     0x7f11939c7aeb  google::LogMessage::Flush()
;    @     0x7f11939c945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f1193feba26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f1194039992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f1193f389ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1193fea762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f1194036df0  Vlab::SMT::ToString::accept()
;    @     0x7f1193f389ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1193fe57f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f1194032450  Vlab::SMT::Eq::accept()
;    @     0x7f1193f389ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1193fe3878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f11940245ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f119401b96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1194030b5c  Vlab::SMT::And::accept()
;    @     0x7f1193f389ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1194024a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f119401ad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f119402ed2a  Vlab::SMT::Assert::accept()
;    @     0x7f1193f389ad  Vlab::SMT::Visitor::visit()
;    @     0x7f119403d699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f119402e067  Vlab::SMT::Script::visit_children()
;    @     0x7f1193f389e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f119401ab35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f119402e03c  Vlab::SMT::Script::accept()
;    @     0x7f1193f389ad  Vlab::SMT::Visitor::visit()
;    @     0x7f119401a7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1193f1eb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f119307a830  __libc_start_main
